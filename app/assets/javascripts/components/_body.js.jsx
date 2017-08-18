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

  render() {
    return (
      <div>
        <NewJob handleSubmit={this.handleSubmit}/>
        <AllJobs jobs={this.state.jobs} />
      </div>
    )
  }
});
