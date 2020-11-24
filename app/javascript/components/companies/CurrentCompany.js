import React, {Component, Fragment} from 'react'

class CardOfCompany extends Component{
    componentDidMount() {
        console.log('Test Current company')
    }
    render() {
        return(
            <div>
                <span>Current company place data</span>
            </div>
        )
    }
}

export default CardOfCompany