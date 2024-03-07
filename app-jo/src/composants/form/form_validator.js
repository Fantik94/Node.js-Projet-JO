import joi from "joi";

const form_validator = joi.object({
    content: joi.string().min(5).max(100).required,
});

export default form_validator;