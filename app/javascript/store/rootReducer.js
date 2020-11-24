import {combineReducers} from 'redux'
import companiesReducer from "./reducers/companiesReducer";

export default combineReducers({
    companies: companiesReducer
})