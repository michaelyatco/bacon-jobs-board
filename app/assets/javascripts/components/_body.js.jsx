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

  handleDelete(id) {
    $.ajax({
      url: '/api/v1/jobs/${id}',
      type: 'DELETE',
      success:() => {
        this.removeItemClient(id);
      }
    });
  },

  removeJobClient(id) {
    var newJobs = this.state.jobs.filter((job) => {
      return job.id != id;
    });

    this.setState({ jobs: newJobs });
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
