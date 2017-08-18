var NewJob = React.createClass({
  render() {
    return (
      <div>
        <input ref='title' placeholder='Enter job title here' />
        <input ref='company' placeholder='Enter company name here' />
        <input ref='location' placeholder='Enter job location here' />
        <input ref='title' placeholder='Enter job description here' />
        <input ref='title' placeholder='Enter job type here' />
        <input ref='title' placeholder='Enter price here' />
          <button onClick={this.handleClick}>Submit</button>
      </div>
    )
  }
});
