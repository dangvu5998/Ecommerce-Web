package com.converter;

public interface BaseConverter<E, D> {
    D toDTO(E entity);

    E toEntity(D dto);

    E toEntity(E entity, D dto);
}
