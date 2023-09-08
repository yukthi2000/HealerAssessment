import React, { useEffect } from "react";
import { useNavigate } from "react-router-dom";

export default function Protected2(props) {
  const navigate = useNavigate();
  const { Component,roll } = props;
  useEffect(() => {
    let login = sessionStorage.getItem(roll);
    console.log(login);
    console.log(sessionStorage.getItem('loginStatus'));
    if (login === 'false'|| login === null) {
      sessionStorage.setItem(
        "loginStatus",
        "Please login to access the Admin interface!"
      );
      navigate("/loginAdmin");
      return;
    }
  });

  return( <Component />);
}
