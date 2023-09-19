import React, { useState, useEffect } from "react";
import "./Profile.css";
import "bootstrap/dist/css/bootstrap.min.css";
import logo from "../../assets/logo.png";
import FeatherIcon from "feather-icons-react";
import { Link, useSearchParams } from "react-router-dom";
import axios from "axios";
import { toast, ToastContainer } from "react-toastify";
import farhath from "../../assets/farhath.jpg";
import Avatar from "@mui/material/Avatar";
import default_dp from "../../assets/default_dp.png";
import AgeCalculator from "../doctorinterface/algorithms/AgeCalculator";

const Profile = () => {
  const [profilepic, setprofilepic] = useState(default_dp);
  const [patients, setpatients] = useState([]);
  const [specialDisease, setspecialDisease] = useState("");
  const [id, setid] = useState(2343);
  const [userdata, setuserdata] = useState([]);
  const [patientList, setPatientList] = useState([]);
  const [filteredPatientList, setFilteredPatientList] = useState([]);
  const [editedPhoneNo, setEditedPhoneNo] = useState("");
  const [editedAddress, setEditedAddress] = useState("");
  const [editedAllDiseases, setEditedAllDiseases] = useState("");
  const [editedProfilePic, setEditedProfilePic] = useState(null);
  const [currpw, setcurrpw] = useState(null);
  const [changepw, setchangepw] = useState(null);
  const [confirmpw, setconfirmpw] = useState(null);

  useEffect(() => {
    fetchData();
  }, []);

  useEffect(() => {
    const patient = patientList.filter((patient) =>
      patient.Patient_ID.includes("cst20008")
    );
    setuserdata(patient);
  }, [patientList]);

  const fetchData = async () => {
    try {
      const response = await axios.get(
        "http://localhost/Healerz/PHP/patient/patientdetails.php"
      );
      setPatientList(response.data);
    } catch (error) {
      console.error("Error fetching data:", error);
      console.log(error);
    }
  };

  const passwordchange = () => {
    if (currpw === null && changepw === null && confirmpw === null) {
      toast.error("Fill Feilds");
    } else {
      if (currpw === userdata.map((data) => data.Password)[0]) {
        if (changepw === null) {
          toast.error("Enter new Password");
        } else if (changepw === confirmpw && changepw !== null) {
          if (currpw === changepw) {
            toast.warn("Existing Password !");
          } else {
            const tempuserdata = [...userdata];
            tempuserdata[0].Password = changepw;
            setuserdata(tempuserdata);
            console.log(userdata[0]);
            axios
              .put(
                "http://localhost/HealerZ/PHP/patient/changePassword.php",
                userdata[0]
              )
              .then((res) => {
                console.log(res);
                toast.success("Password Change Completed");
                window.location.reload();
                // res.data.ProfilePic && setprofilepic(res.data.ProfilePic);
              })
              .catch((err) => {
                console.log(err);
              });
          }
        } else {
          toast.error("Wrong Confirm Password !");
        }
      } else {
        toast.error("Wrong Current Password !");
      }
    }
  };
  const handleProfileUpdate = () => {
    // const formData = new FormData()
    // formData.append("Patient_ID", id);
    // formData.append("PhoneNo", editedPhoneNo);
    // formData.append("Address", editedAddress);
    // formData.append("SpecialDisease", editedAllDiseases);

    if (editedProfilePic) {
      // const alldata=[...userdata];
      // alldata[0].Profile=editedProfilePic;
      // setuserdata(alldata);
    }

    if (userdata[0].PhoneNo.length !== 10) {
      toast.error("Invalid Phone Number");
    } else {
      console.log(userdata[0]);
      axios
        .put(
          "http://localhost/HealerZ/PHP/patient/updateProfile.php",
          userdata[0]
        )
        .then((res) => {
          console.log(res);
          if (res.data === "Patient details not foundNo file uploaded") {
            toast.error("No any Changes");
          } else {
            toast.success("Changes Modified");
            window.location.reload();
          }

          // res.data.ProfilePic && setprofilepic(res.data.ProfilePic);
        })
        .catch((err) => {
          console.log(err);
        });
    }
  };

  const [medicallist, setmedicallist] = useState([
    { No: 1, date: "07-07-2023" },
    { No: 2, date: "07-04-2023" },
    { No: 3, date: "07-06-2022" },
    { No: 4, date: "07-04-2022" },
    { No: 5, date: "07-11-2021" },
  ]);

  const onPDFdownload = () => {
    // using Java Script method to get PDF file
    fetch("sample.pdf").then((response) => {
      response.blob().then((blob) => {
        // Creating new object of PDF file
        const fileURL = window.URL.createObjectURL(blob);
        // Setting various property values
        let alink = document.createElement("a");
        alink.href = fileURL;
        alink.download = "CST20008.pdf";
        alink.click();
      });
    });
  };
  return (
    <div>
      <nav
        className="navbar navbar-expand-lg shadow top navbarh"
        style={{ zIndex: 1000 }}
      >
        <div className="container-fluid">
          <a className="navbar-brand navbar-brand1" href="/">
            <img src={logo} alt="HealerZ" height="48px" />
          </a>
          <button
            className="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarTogglerDemo02"
            aria-controls="navbarTogglerDemo02"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span className="navbar-toggler-icon"></span>
          </button>
          <div
            className="navbar-collapse navbar-collapse1 collapse "
            id="navbarTogglerDemo02"
          >
            <ul className="navbar-nav">
              <li className="nav-item nav-link nav-hover navicoon">
                <a className="nav-link" href="/">
                  <FeatherIcon
                    icon="home"
                    className="me-2 naviccon2 nav-hover"
                  />
                  <span className="lettnav">HOME</span>
                </a>
              </li>
              <li className="nav-item" style={{ paddingLeft: "30px" }}>
                <a className="nav-link nav-hover " href="/login">
                  {/* <FeatherIcon icon="user" className="me-2 loginiccontt" /> */}
                  {/* <Avatar
                    alt="Remy Sharp"
                    src="/static/images/avatar/1.jpg"
                    className="me-2 loginiccontt"
                  /> */}
                  <img
                    src={profilepic}
                    alt="avatar"
                    className="rounded-circle me-2 loginiccontt"
                    width="40px"
                    height="40px"
                  />
                </a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <br />
      <div className="profile">
        <div className="card-container cardprof">
          <div className="card card-1 cardproff">
            <h3 className="serhed7">Profile</h3>
            <hr />
            {/* <div className="card sub-card cardproff">
              <div className="info">
                <h6>Farhath</h6>
                <p className="info">cst20001</p>
                <p className="info"> N0:31, Kandy, Sri Lanka</p>
                <p className="info">0771234567</p>
              </div>
              <div></div>
            </div> */}
            {userdata.map((data, index) => (
              <div key={index}>
                <div className="d-flex justify-content-center mb-2">
                  <div className="d-flex align-items-center justify-content-center ms-2">
                    <img
                      src={profilepic}
                      alt="avatar"
                      className="rounded-circle me-2"
                      width="100px"
                      height="100px"
                    />
                  </div>

                  <div className="d-flex align-items-center justify-content-center">
                    <div>
                      <h4 className="m-0">{data.PatientName}</h4>
                      <p className="fs-5 m-0">{data.Patient_ID}</p>
                      <p className="fs-9 m-0">{data.Address}</p>
                      <p className="fs-10 m-0">{data.PhoneNo}</p>
                    </div>
                  </div>
                </div>
                <hr />
                <div className="info-2">
                  <p info-2>
                    Age :{" "}
                    <span className="green">
                      <AgeCalculator dateOfBirth={data.DateOfBirth} /> years
                    </span>
                  </p>
                  <p info-2>Gender : {data.Gender}</p>
                  <p info-2>
                    Blood Group : <span className="red">{data.BloodGroup}</span>{" "}
                  </p>
                  <p info-2>
                    Allergies :{" "}
                    <span className="blue">{data.SpecialDisease}</span>
                  </p>
                </div>
              </div>
            ))}

            <div className="specialDisease">
              <h6>Special Disease</h6>
              <p>{userdata.map((data) => data.SpecialDisease)}</p>
            </div>
            <hr />
            <br />

            <div>
              <h3 className="serhed7">Medical</h3>
              <hr />
              <table className={"table table-hover table-striped "}>
                <thead className={"top-0 position-sticky h-45"}>
                  <th>No</th>
                  <th>Date</th>
                  <th>Download</th>
                </thead>
                <tbody>
                  {medicallist.map((data, index) => (
                    <tr>
                      <th scope="row">{data.No}</th>
                      <td style={{ fontSize: "12px" }}>{data.date}</td>
                      <td>
                        {" "}
                        <Link to="/profile">
                          <div className="button">
                            <button
                              className="btn shadow gradient-buttonnn"
                              onClick={onPDFdownload}
                            >
                              Download
                            </button>
                          </div>
                        </Link>
                      </td>
                    </tr>
                  ))}
                </tbody>
              </table>
              <hr />
            </div>
          </div>

          <div className="card card-2 cardproff">
            <div className="">
              <div className="form-container">
                <h3 className="serhed6">Request Medical</h3>
                <form id="medical-request-form">
                  <div className="form-floating">
                    <input
                      type="date"
                      className="form-control"
                      id="floatingPassword"
                      placeholder="New Password"
                      style={{ width: "100%" }}
                    />
                    <label htmlFor="floatingPassword">Consulatation Date</label>
                  </div>
                  <br />
                  <div className="form-floating">
                    <input
                      type="text"
                      className="form-control"
                      id="floatingPassword"
                      placeholder="New Password"
                      style={{ width: "100%" }}
                    />
                    <label htmlFor="floatingPassword">Duration (In Days)</label>
                  </div>
                  <br />
                  <div className="form-floating">
                    <textarea
                      type="text"
                      className="form-control"
                      id="floatingPassword"
                      placeholder="New Password"
                      style={{ width: "100%" }}
                    />
                    <label htmlFor="floatingPassword">Message</label>
                  </div>
                  <hr />
                  <div className="button">
                    <button className="btn shadow gradient-button">
                      Submit Request
                    </button>
                  </div>
                </form>
              </div>
            </div>
            <br />
            <hr />
            <br />
            <div className="form-container">
              <h3 className="serhed6">Edit Profile Details</h3>
              <form id="editProfileForm" encType="multipart/form-data">
                <div className="container">
                  <div className="column-container">
                    <div className="column-1">
                      <div className="sub-row">
                        <h5>Edit Profile</h5>
                      </div>
                      {userdata.map((data, index) => (
                        <div className="personalInfo">
                          <div className="form-floating">
                            <input
                              type="number"
                              className="form-control"
                              id="floatingPassword"
                              placeholder="New Password"
                              style={{ width: "100%" }}
                              value={editedPhoneNo || data.PhoneNo}
                              onChange={(e) => {
                                // if (e.target.value.length > 10 ) {
                                //   toast.error("Invalid Phone Number");
                                // } else {
                                setEditedPhoneNo(e.target.value);
                                console.log(e.target.value);
                                const updatedUserdata = [...userdata];
                                // console.log(updatedUserdata[0]);
                                updatedUserdata[0].PhoneNo =
                                  e.target.value || data.PhoneNo;
                                setuserdata(updatedUserdata);
                                // console.log(updatedUserdata);
                                // }
                              }}
                            />
                            <label htmlFor="floatingPassword">
                              Change PhoneNo
                            </label>
                          </div>
                          <br />
                          <div className="form-floating">
                            <textarea
                              type="text"
                              className="form-control"
                              id="floatingPassword"
                              placeholder="New Password"
                              style={{ width: "100%" }}
                              value={editedAddress || data.Address}
                              onChange={(e) => {
                                setEditedAddress(e.target.value);
                                const updatedUserdata = [...userdata];
                                updatedUserdata[0].Address =
                                  e.target.value || data.Address;
                                setuserdata(updatedUserdata);
                              }}
                            />
                            <label htmlFor="floatingPassword">
                              Change Address
                            </label>
                          </div>
                          <br />
                          <div className="form-floating">
                            <input
                              type="file"
                              name="Profile"
                              className="form-control"
                              accept=".jpg, .jpeg, .png"
                              id="profilePic"
                              placeholder="Change Profile pic"
                              style={{ width: "100%" }}
                              onChange={(e) => {
                                setEditedProfilePic(e.target.files[0]);
                                const tempuserdata = [...userdata];
                                tempuserdata[0].Profile = e.target.files[0];
                                setuserdata(tempuserdata);
                              }}
                            />
                            <label htmlFor="ProfilePic">
                              Change profile pic
                            </label>
                          </div>
                          <hr />
                          <div className="button">
                            <button
                              className="btn shadow gradient-button"
                              onClick={(e) => {
                                e.preventDefault();

                                // console.log(userdata);
                                handleProfileUpdate();
                              }}
                            >
                              Save changes{" "}
                            </button>
                          </div>
                        </div>
                      ))}
                    </div>

                    <div className="column-2">
                      <div className="sub-row">
                        <h5>Change Password</h5>
                      </div>

                      <div className="personalInfo">
                        <div className="form-floating">
                          <input
                            type="password"
                            className="form-control"
                            id="floatingPassword"
                            placeholder="Current Password"
                            onChange={(e) => {
                              setcurrpw(e.target.value);
                            }}
                            style={{ width: "100%" }}
                          />
                          <label htmlFor="floatingPassword">
                            Current Password
                          </label>
                        </div>
                        <br />
                        <div className="form-floating">
                          <input
                            type="password"
                            className="form-control"
                            id="floatingPassword"
                            placeholder="New Password"
                            onChange={(e) => {
                              setchangepw(e.target.value);
                            }}
                            style={{ width: "100%" }}
                          />
                          <label htmlFor="floatingPassword">New Password</label>
                        </div>
                        <br />
                        <div className="form-floating">
                          <input
                            type="password"
                            className="form-control"
                            id="floatingPassword"
                            placeholder="Confirm Password"
                            onChange={(e) => {
                              setconfirmpw(e.target.value);
                            }}
                            style={{ width: "100%" }}
                          />
                          <label htmlFor="floatingPassword">
                            Confirm Password
                          </label>
                        </div>
                        <hr />
                        <div className="button">
                          <button
                            className="btn shadow gradient-button"
                            onClick={(e) => {
                              e.preventDefault();

                              passwordchange();
                            }}
                          >
                            Save changes{" "}
                          </button>
                        </div>
                      </div>
                    </div>
                  </div>

                  <h5>Allergies and Diseases</h5>

                  <div className="allergies">
                    {/* <div className="form-group">
                    <label for="allergies">Allergies:</label>
                    <input
                      type="text"
                      className="form-input"
                      id="allergies"
                      name="allergies"
                    ></input>
                  </div> */}

                    <div className="form-floating">
                      <textarea
                        className="form-control"
                        id="diseases"
                        placeholder="Confirm Password"
                        value={
                          userdata.map((data) => data.SpecialDisease) ||
                          editedAllDiseases
                        }
                        rows={7}
                        onChange={(e) => {
                          setEditedAllDiseases(e.target.value);
                          const updatedUserdata = [...userdata];
                          updatedUserdata[0].SpecialDisease =
                            e.target.value || data.SpecialDisease;

                          setuserdata(updatedUserdata);
                        }}
                      ></textarea>
                      <label htmlFor="floatingPassword">
                        Specific Diseases
                      </label>
                    </div>
                  </div>
                  <hr />
                  <div className="button">
                    <button
                      className="btn shadow gradient-button"
                      onClick={(e) => {
                        e.preventDefault();

                        handleProfileUpdate();
                      }}
                    >
                      Save Changes
                    </button>
                  </div>
                  <hr />
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <ToastContainer />
    </div>
  );
};

export default Profile;
