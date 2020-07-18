import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_twitter_clone/helper/enum.dart';
import 'package:flutter_twitter_clone/model/feedModel.dart';
import 'package:flutter_twitter_clone/helper/theme.dart';
import 'package:flutter_twitter_clone/state/authState.dart';
import 'package:flutter_twitter_clone/state/feedState.dart';
import 'package:flutter_twitter_clone/widgets/customWidgets.dart';
import 'package:flutter_twitter_clone/widgets/tweet/tweet.dart';
import 'package:flutter_twitter_clone/widgets/tweet/widgets/tweetBottomSheet.dart';
import 'package:provider/provider.dart';

class FeedPostDetail extends StatefulWidget {
  FeedPostDetail({Key key, this.postId}) : super(key: key);
  final String postId;

  _FeedPostDetailState createState() => _FeedPostDetailState();
}

class _FeedPostDetailState extends State<FeedPostDetail> {
  String postId;
  @override
  void initState() {
    postId = widget.postId;
    // var state = Provider.of<FeedState>(context, listen: false);
    // state.getpostDetailFromDatabase(postId);
    super.initState();
  }

  Widget _floatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        var state = Provider.of<FeedState>(context, listen: false);
        state.setTweetToReply = state.tweetDetailModel?.last;
        Navigator.of(context).pushNamed('/ComposeTweetPage/' + postId);
      },
      child: Icon(Icons.add),
    );
  }

  Widget _commentRow(FeedModel model) {
    return Tweet(
      model: model,
      type: TweetType.Reply,
      trailing:
          TweetBottomSheet().tweetOptionIcon(context, model, TweetType.Reply),
    );
  }

  Widget _tweetDetail(FeedModel model) {
    return Tweet(
      model: model,
      type: TweetType.Detail,
      trailing:
          TweetBottomSheet().tweetOptionIcon(context, model, TweetType.Detail),
    );
  }

  void addLikeToComment(String commentId) {
    var state = Provider.of<FeedState>(context, listen: false);
    var authState = Provider.of<AuthState>(context, listen: false);
    state.addLikeToTweet(state.tweetDetailModel.last, authState.userId);
  }

  void openImage() async {
    Navigator.pushNamed(context, '/ImageViewPge');
  }

  void deleteTweet(TweetType type, String tweetId, {String parentkey}) {
    var state = Provider.of<FeedState>(context, listen: false);
    state.deleteTweet(tweetId, type, parentkey: parentkey);
    Navigator.of(context).pop();
    if (type == TweetType.Detail) Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    var state = Provider.of<FeedState>(context);
    return WillPopScope(
      onWillPop: () async {
        Provider.of<FeedState>(context, listen: false)
            .removeLastTweetDetail(postId);
        return Future.value(true);
      },
      child: Container(
        decoration: BoxDecoration(
          // Added container to Scaffold to display gradient.
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [const Color(0xFFf7a1d0), const Color(0xFFa1c6f7)],
          ),
        ),
        child: Scaffold(
          floatingActionButton: _floatingActionButton(),
          backgroundColor: Colors.transparent.withOpacity(
              0), // Removed contextual background and added transparent one.
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                pinned: true,
                title: customTitleText('Thread'),
                iconTheme: IconThemeData(
                    color: Colors.white), // Changed arrow to white
                backgroundColor: Colors.transparent,
                // Changed contextual theme to purple
                bottom: PreferredSize(
                  child: Container(
                    color: Colors.grey.shade200,
                    height: .0,
                  ),
                  preferredSize: Size.fromHeight(0.0),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    state.tweetDetailModel == null ||
                            state.tweetDetailModel.length == 0
                        ? Container()
                        : _tweetDetail(state.tweetDetailModel?.last),
                    Container(
                      height: 5,
                      width: fullWidth(context),
                      color: Colors.purple.withOpacity(0.25),
                    )
                  ],
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  state.tweetReplyMap == null ||
                          state.tweetReplyMap.length == 0 ||
                          state.tweetReplyMap[postId] == null
                      ? [
                          Container(
                            child: Center(
                                //  child: Text('No comments'),
                                ),
                          )
                        ]
                      : state.tweetReplyMap[postId]
                          .map((x) => _commentRow(x))
                          .toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
