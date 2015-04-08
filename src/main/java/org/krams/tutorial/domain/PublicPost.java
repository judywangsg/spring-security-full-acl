package org.krams.tutorial.domain;

import java.util.Date;

/**
 * A simple POJO representing public posts
 */
public class PublicPost implements Post {
  private Long id;
  private Date date;
  private String message;

  public Date getDate() {
    return date;
  }

  public Long getId() {
    return id;
  }

  public String getMessage() {
    return message;
  }

  public void setDate(Date date) {
    this.date = date;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public void setMessage(String message) {
    this.message = message;
  }
}
