package com.gunShoppingSite.validator;

import com.gunShoppingSite.model.Gun;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import java.util.regex.Pattern;

public class GunValidator implements Validator
    {

        @Override
        public boolean supports(Class<?> aClass) {
        return Gun.class.equals(aClass);
    }

        @Override
        public void validate(Object obj, Errors err)
        {
            ValidationUtils.rejectIfEmpty(err, "id", "gun.id.empty");
            ValidationUtils.rejectIfEmpty(err, "gunName", "gun.gunName.empty");
            ValidationUtils.rejectIfEmpty(err, "description", "gun.description.empty");
            ValidationUtils.rejectIfEmpty(err, "priceInr", "gun.priceInr.empty");
            ValidationUtils.rejectIfEmpty(err, "priceUsd", "gun.priceUsd.empty");
            ValidationUtils.rejectIfEmpty(err, "scope", "gun.scope.empty");

        }
}
