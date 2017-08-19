var NewJob = React.createClass({
  handleClick() {
    var title = this.refs.title.value;
    var company = this.refs.company.value;
    var location = this.refs.location.value;
    var description = this.refs.description.value;
    var jobtype= this.refs.jobtype.value;
    // var price = this.refs.price.value;
    $.ajax({
      url: `/api/v1/jobs`,
      type: 'POST',
      data: { job: { title: title, company: company, location: location, description: description, jobtype: jobtype } },
      success: (job) => {
        this.props.handleSubmit(job);
      }
    });
  },

  render() {
    return (
      <div>
        <p><input ref='title' placeholder='Enter job title here' /></p>
        <p><input ref='company' placeholder='Enter company name here' /></p>
        <p><input ref='location' placeholder='Enter job location here' /></p>
        <p><input ref='description' placeholder='Enter job description here' /></p>
        <p><input ref='jobtype' placeholder='Enter job type here' /></p>
        <p><button onClick={this.handleClick}>Submit</button></p>
      </div>
    )
  }
});
