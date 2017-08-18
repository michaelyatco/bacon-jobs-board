var Job = React.createClass({
  getInitialState() {
    return {editable: false}
  },

  handleEdit() {
    this.setState({editable: !this.state.editable})
  },

  render() {
    return (
      <div>
        <h3>{this.props.job.name}</h3>
        <p>{this.props.job.description}</p>
        <button onClick={this.props.handleDelete} > Delete </button>
        <button onClick={this.props.handleEdit} > Edit </button>
      </div>
    )
  }
});
