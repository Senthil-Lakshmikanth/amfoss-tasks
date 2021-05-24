package main

import (
	"context"
	"fmt"
	"log"

	"github.com/vartanbeno/go-reddit/v2/reddit"
)

var ctx = context.Background()

func main() {
	if err := run(); err != nil {
		log.Fatal(err)
	}
}

func run() (err error) {

	credentials := reddit.Credentials{ID: "sJ2SvaGCm-fvsQ", Secret: "OGZYgtCBrZ0oRllTlOnU_u1cT0RrYg", Username: "senthil_dot_ai", Password: "senthil"}
	client, _ := reddit.NewClient(credentials)
	sr, _, err := reddit.DefaultClient().Subreddit.Get(ctx, "memes")
	if err != nil {
		return
	}

	fmt.Printf("%s was created on %s and has %d subscribers.\n", sr.NamePrefixed, sr.Created.Local(), sr.Subscribers)

	posts, _, err := client.Subreddit.TopPosts(context.Background(), "memes", &reddit.ListPostOptions{
		ListOptions: reddit.ListOptions{
			Limit: 100,
		},
		Time: "week",
	})
	for _, post := range posts {
		fmt.Println(post.Title)
	}
	if err == nil {
		_, err := client.Post.Upvote(context.Background(), "t3_postid")
		if err != nil {
			return err
		}

	}
	fmt.Printf("Received %d posts.\n", len(posts))

	return
}
