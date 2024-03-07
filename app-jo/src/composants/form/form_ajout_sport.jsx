import form_validator from "./form_validator.js";

const form_ajout_sport = (req, res, next) => {
    const validate = form_validate.validate(req, body, {
        abordEarly: false });

        console.log(validate);

        next();
    };
}

export default form_ajout_sport;