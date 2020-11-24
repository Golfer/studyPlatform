import {
    FETCH_COMPANIES_ERROR,
    FETCH_COMPANIES_START,
    FETCH_COMPANIES_SUCCESS
} from '../../actions/actionTypes'
const initialState = {
    companies: [],
    showCompanies: false
}

export default function companiesReducer(state = initialState, action) {
    switch (action.type) {
        case FETCH_COMPANIES_START:
            return {
                ...state, showCompanies: false
            }
        case FETCH_COMPANIES_SUCCESS:

            return {
                ...state,
                companies: action.companies,
                showCompanies: true,
            }
        case FETCH_COMPANIES_ERROR:
            return {
                ...state, error: action.error
            }
        default:
            return {
                ...state
            }
    }
}