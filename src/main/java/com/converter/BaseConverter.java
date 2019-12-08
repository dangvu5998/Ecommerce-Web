package com.converter;

import java.util.List;

public interface BaseConverter<E, D> {
    D toDTO(E entity);

    E toEntity(D dto);

    E toEntity(E entity, D dto);
}
