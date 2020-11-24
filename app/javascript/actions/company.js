import axios from 'axios'
import {FETCH_COMPANIES_ERROR, FETCH_COMPANIES_START, FETCH_COMPANIES_SUCCESS} from './actionTypes'

export function fetchCompanies() {
    return async dispatch => {
        dispatch(fetchCompaniesStart())
        try {
            const response = await axios.get('/api/v1/companies.json')
            const data_companies = [...response.data.data]
            const companies = []
            data_companies.map(company => {
                companies.push({
                    id: company.id,
                    name: company.attributes.name,
                    currency: company.attributes.currency,
                    country: company.attributes.country
                })
            })

            dispatch(fetchCompaniesSuccess(companies))
        } catch (e) {
            dispatch(fetchCompaniesError(e))
        }
    }
}

export function fetchCompaniesStart() {
    return {
        type: FETCH_COMPANIES_START
    }
}

export function fetchCompaniesSuccess(companies) {
    return {
        type: FETCH_COMPANIES_SUCCESS,
        companies: companies
    }
}

export function fetchCompaniesError(e) {
    return {
        type: FETCH_COMPANIES_ERROR,
        error: e
    }
}