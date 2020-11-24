import React, {Component, Fragment} from 'react'
import {connect} from "react-redux";
import {NavLink} from "react-router-dom";
import {fetchCompanies} from '../../actions/company';

class ListOfCompanies extends Component {
    renderCompanies() {
        this.props.companies.map((company, idx )=> < li key={idx}>{company.name}</li>)
        // return this.props.companies.map(company => {(<li key={company.id}> {company.name}</li>)})
    }

    componentDidMount() {
        this.props.fetchCompanies()
    }

    render() {
        return (
            <ul>
                {this.props.companies.map((company, idx )=>
                    < li key={idx}>
                        {company.name}
                        <NavLink to={'/company/' + company.id}>Company details</NavLink>
                        <NavLink to={'/company/' + company.id + '/cashCompany'}>Cash Statistic</NavLink>
                        <NavLink to={'/company/' + company.id + '/cashManagement'}>Cash Managment Form</NavLink>
                    </li>
                )}
            </ul>
        )
    }
}

function mapStateToProps(state) {
    return {
        companies: state.companies.companies,
    }
}

function mapDispatchToProps(dispatch) {
    return {
        fetchCompanies: () => dispatch(fetchCompanies())
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(ListOfCompanies)
