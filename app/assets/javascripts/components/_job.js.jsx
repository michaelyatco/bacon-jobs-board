var Job = React.createClass({
  getInitialState() {
    return {editable: false}
  },

  handleEdit() {
    if (this.state.editable) {
      var id = this.props.job.id;
      var title = this.refs.title.value;
      var company = this.refs.company.value;
      var location = this.refs.location.value;
      var description = this.refs.description.value;
      var jobtype = this.refs.jobtype.value;
      var price = this.refs.price.value;
      var job = { id: id, title: title, company: company, location: location, description: description, jobtype:jobtype, price: price }
      this.props.handleUpdate(job);
    }
    this.setState({editable: !this.state.editable})
  },

  render() {
    var title = this.state.editable ? <input type='text' ref='title' defaultValue={this.props.job.title} /> : <h3>{this.props.job.title}</h3>
    var company = this.state.editable ? <input type='text' ref='company' defaultValue={this.props.job.company} /> : <p>{this.props.job.company} </p>
    var location = this.state.editable ? <input type='text' ref='location' defaultValue={this.props.job.location} /> : <p>{this.props.job.location} </p>
    var description = this.state.editable ? <input type='text' ref='description' defaultValue={this.props.job.description} /> : <p>{this.props.job.description} </p>
    var jobtype= this.state.editable ? <input type='text' ref='jobtype' defaultValue={this.props.job.jobtype} />: <p>{this.props.job.jobtype} </p>
    var price = this.state.editable ? <input type='text' ref='price' defaultValue={this.props.job.price} /> : <p>{this.props.job.price} </p>

    return (
      <div>
        {title}
        {company}
        {location}
        {description}
        {jobtype}
        {price}
        <button onClick={this.handleEdit}> {this.state.editable ? 'Submit' : 'Edit'} </button>
        <button onClick={this.props.handleDelete}> Delete </button>
      </div>
    )
  }
});


