// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import ReactDOM from 'react-dom'
import {BrowserRouter} from "react-router-dom";
import rootReducer from "../store/rootReducer";
import {applyMiddleware, compose, createStore} from "redux";
import thunk from "redux-thunk";
import {Provider} from "react-redux";

import Companies from '../components/Companies'

const store = createStore(rootReducer)
const application = (
    <Provider store={store}>
        <BrowserRouter>
            <React.StrictMode>
                <Companies />
            </React.StrictMode>,
        </BrowserRouter>
    </Provider>
)
document.addEventListener('DOMContentLoaded', () => {
    ReactDOM.render(
        application,
        document.body.appendChild(document.createElement('div')),
    )
})
