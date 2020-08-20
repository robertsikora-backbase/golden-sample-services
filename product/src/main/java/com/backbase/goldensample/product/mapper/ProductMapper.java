package com.backbase.goldensample.product.mapper;

import static org.mapstruct.factory.Mappers.getMapper;


import com.backbase.goldensample.product.persistence.ProductEntity;
import com.backbase.product.api.service.v2.model.Product;
import java.util.List;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.NullValuePropertyMappingStrategy;

@Mapper(componentModel = "spring", nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
public interface ProductMapper {

  ProductMapper INSTANCE = getMapper(ProductMapper.class);

  @Mapping(source = "id", target = "productId")
  Product entityToApi(ProductEntity entity);

  @Mapping(source = "productId", target = "id")
  @Mapping(target = "version", ignore = true)
  ProductEntity apiToEntity(Product api);

  List<Product> entityListToApiList(List<ProductEntity> entity);

  List<ProductEntity> apiListToEntityList(List<Product> api);
}