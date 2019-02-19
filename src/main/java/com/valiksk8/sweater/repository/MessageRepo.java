package com.valiksk8.sweater.repository;

import com.valiksk8.sweater.domain.Message;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface MessageRepo extends CrudRepository<Message, Long> {
    List<Message>  findByTag(String tag);
}
