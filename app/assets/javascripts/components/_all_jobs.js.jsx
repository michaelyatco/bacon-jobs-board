var AllJobs = React.createClass({
  getInitialState() {
    return { jobs: [] }
  },

    componentDidMount() {
        $.getJSON('/api/v1/jobs.json', (response) => { this.setState({ jobs: response }) });
    },

    render() {
    var jobs= this.state.jobs.map((job) => {
        return (
            <div>
                <h3>{job.title}</h3>
                <p>{job.company}</p>
                <p>{job.location}</p>
                <p>{job.description}</p>
                <p>{job.jobtype}</p>
                <p>{job.price}</p>
            </div>
        )
    });

    return(
        <div>
            {jobs}
        </div>
    )
}
});
