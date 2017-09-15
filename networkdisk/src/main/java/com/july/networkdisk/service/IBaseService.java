package com.july.networkdisk.service;

import java.util.*;

public interface IBaseService<T>
{
    void save(final T p0);
    
    void update(final T p0);
    
    void delete(final Integer p0);
    
    T get(final Integer p0);
    
    List<T> getAll();
}
