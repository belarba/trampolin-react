import React from 'react'
import axios from 'axios'

class Home extends React.Component {
state = {
    posts: []
  };

  componentDidMount() {
    axios
      .get('/api/posts')
      .then(response => {
        this.setState({ posts: response.data.posts });
      })
  }

  renderAllPosts = () => {
    return(
      <ul>
        {this.state.posts.map((post, i) => (
          <li key={i}>{post.name} - R$ {post.value}</li>
        ))}
      </ul>
    )
  }

  render() {
    return (
      <div>
        {this.renderAllPosts()}
      </div>
    )
  }
}


export default Home
