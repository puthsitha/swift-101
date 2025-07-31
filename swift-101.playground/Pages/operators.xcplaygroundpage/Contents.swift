import Foundation

var likeCount = 5
var commentCount = 6
var viewCount = 200

// Arithmetic operators and compound operators

// Addition
likeCount += 3
print(likeCount) // 8

// Subtraction
commentCount -= 6
print(commentCount) // 0

// Multiplication
viewCount *= 2
print(viewCount) // 400

// Division
commentCount /= 3
print(commentCount) // 0

// Modulo
likeCount %= 2
print(likeCount) // 0


// Comparison operators

// Equal to
let isLikeEqualComment = likeCount == commentCount
if isLikeEqualComment {
    print("number of likes equal comments")
}

// Greater than
let isLikeBigThanComment = likeCount > commentCount
if(isLikeBigThanComment){
    print("like greater than comment")
}

// Less than
let isCommentBigThanLike = likeCount < commentCount
if(isCommentBigThanLike){
    print("comment greater than likes")
}

// Greater or equal to
let hasComment = commentCount >= 1
if hasComment {
    print("this post has comment")
}else {
    print("this post has no comment")
}

// Less or equal to
let isLikeLessThanComment = likeCount <= commentCount
if isLikeLessThanComment {
    print("like less or equal to comment")
}

// Logical operators

// Or
if hasLike || hasComment {
    print("This post has likes or comment")
}else{
    print("This post has no like or comment")
}

// And
if hasLike && hasComment {
    print("This post has both comments & likes")
}

// Not equal to
let hasLike = likeCount != 0
if(hasLike){
    print("this post has likes")
}else {
    print("this post hasn't likes")
}
