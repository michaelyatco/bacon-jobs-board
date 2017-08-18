var AllJobs = React.createClass({
  render() {
    var jobs= this.props.jobs.map((job) => {
      return (
        <div key={job.id}>
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
