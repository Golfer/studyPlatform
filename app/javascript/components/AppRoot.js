import './AppRoot.css';
import React, {Fragment} from "react";
import {Route} from "react-router-dom";

import ListOfCompoanies from '../components/companies/ListOfCompanies'
import CurrentCompoany from '../components/companies/CurrentCompany'
import CurrentCompanyCash from '../components/companies/CurrentCompanyCash'
import CurrentCompanyCashManagement from '../components/companies/CompanyCashManagement'
function App() {

    return (
        <Fragment>
            <main>
                <Route exact path="/" component={ListOfCompoanies} />
                <Route exact path="/companies" component={ListOfCompoanies} />
                <Route exact path="/company/:id" component={CurrentCompoany} />
                <Route exact path="/company/:id/cashManagement" component={CurrentCompanyCashManagement} />
                <Route exact path="/company/:id/cashCompany" component={CurrentCompanyCash} />
            </main>
        </Fragment>
    );
}

export default App;