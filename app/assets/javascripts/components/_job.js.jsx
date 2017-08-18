var Job = React.createClass({
  getInitialState() {
    return {editable: false}
  },

  handleEdit() {
    if (this.state.editable) {
      var id = this.props.job.id;
      var title = this.props.job.title;
      var company = this.props.job.company;
      var location = this.props.job.location;
      var jobtype = this.props.job.jobtype;
      var price = this.props.job.price;
      var job = { id: id, title: title, company: company, location: location, description: description, jobtype:jobtype, price: price }
      this.props.handleUpdate(job);
    }
    this.setState({editable: !this.state.editable})
  },

  render() {
    var title = this.state.editable ? <input type='text' defaultValue={this.props.job.title} /> : <h3>({this.props.job.id} {this.props.job.title}) </h3>
    var company = this.state.editable ? <input type='text' defaultValue={this.props.job.company} /> : <p>{this.props.job.company} </p>
    var location = this.state.editable ? <input type='text' defaultValue={this.props.job.location} /> : <p>{this.props.job.location} </p>
    var description = this.state.editable ? <input type='text' defaultValue={this.props.job.description} /> : <p>{this.props.job.description} </p>
    var jobtype= this.state.editable ? <input type='text' defaultValue={this.props.job.jobtype} /> : <p>{this.props.job.jobtype} </p>
    var price = this.state.editable ? <input type='text' defaultValue={this.props.job.price} /> : <p>{this.props.job.price} </p>

    return (
      <div>
        {title}
        {company}
        {location}
        {description}
        {jobtype}
        {price}
        <button onClick={this.props.handleDelete} > Delete </button>
        <button> {this.state.editable ? 'Submit' : 'Edit' } </button>
      </div>
    )
  }
});
