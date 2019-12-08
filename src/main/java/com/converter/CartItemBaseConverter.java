package com.converter;

import java.util.List;

public interface CartItemBaseConverter<E, D> extends BaseConverter<E, D> {
    List<E> toListEntity(List<D> dtos);

    List<D> toListDTO(List<E> entities);
}
