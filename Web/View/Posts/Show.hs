module Web.View.Posts.Show where
import Web.View.Prelude
import qualified Text.MMark as MMark

data ShowView = ShowView { post :: Include "comments" Post }

instance View ShowView where
    html ShowView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={PostsAction}>Test</a></li>
                <li class="breadcrumb-item active">Test</li>
            </ol>
        </nav>
        <h1>{get #title post}</h1>
        <p>{get #createdAt post |> timeAgo}</p>
        <div>{get #body post |> renderMarkdown}</div>
        <div>{forEach (get #comments post) renderComment}</div>


        <a href={NewCommentAction (get #id post)}>Add Comment</a>
    |]

renderMarkdown text =
    case text |> MMark.parse "" of
        Left error -> "Something went wrong"
        Right markdown -> MMark.render markdown |> tshow |> preEscapedToHtml

renderComment comment = [hsx|
        <div class="mt-4">
            <h5>{get #author comment}</h5>
            <p>{get #body comment}</p>
        </div>
        |]