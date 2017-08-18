var Body = React.createClass({
  getInitialState() {
    return { jobs: [] }
  },

  componentDidMount() {
    $.getJSON('/api/v1/jobs.json', (response) => { this.setState({ jobs: response }) });
  },

  handleSubmit(job) {
    var newJob = this.state.jobs.concat(job);
    this.setState({ jobs: newState})
  },

  handleDelete() {
    $.ajax({
      url: '/api/v1/jobs/${id}',
      type: 'DELETE',
      success(response) {
        console.log('Successfully removed job')
      }
    });
  },

  render() {
    return (
      <div>
        <NewJob handleSubmit={this.handleSubmit}/>
        <AllJobs jobs={this.state.jobs} handleDelete={this.handleDelete}/>
      </div>
    )
  }
});
