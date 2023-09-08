import { useState } from 'react';
import Button from 'react-bootstrap/Button';
import Form from 'react-bootstrap/Form';
import Modal from 'react-bootstrap/Modal';
import './Home.css';

export default function HbloodReg() {
  const [show, setShow] = useState(false);
  const handleClose = () => setShow(false);
  const handleShow = () => setShow(true);

  return (
    <>
      <Button className='btn btn-primary regbutt' onClick={handleShow}>
        Register
      </Button>

      <Modal show={show} onHide={handleClose}>
        <Modal.Header closeButton>
          <Modal.Title>Blood Registration</Modal.Title>
        </Modal.Header>
        <Modal.Body>
            
              <div className="form-container">
                <Form id="medical-request-form">
                  <div className="form-floating">
                    <input
                      type="text"
                      className="form-control"
                      id="floatingPassword"
                      placeholder="Email"
                      style={{ width: "100%" }}
                    />
                    <label htmlFor="floatingPassword">Email</label>
                  </div>
                  <br />
                  <div className="form-floating">
                    <input
                      type="text"
                      className="form-control"
                      id="floatingPassword"
                      placeholder="Name"
                      style={{ width: "100%" }}
                    />
                    <label htmlFor="floatingPassword">Name</label>
                  </div>
                  <br />
                  <div className="form-floating">
                    <input
                      type="text"
                      className="form-control"
                      id="floatingPassword"
                      placeholder="Nic NO"
                      style={{ width: "100%" }}
                    />
                    <label htmlFor="floatingPassword">NIC No</label>
                  </div>
                  <br />
                  <div className="form-floating">
                    <input
                      type="text"
                      className="form-control"
                      id="floatingPassword"
                      placeholder="Phone No"
                      style={{ width: "100%" }}
                    />
                    <label htmlFor="floatingPassword">Phone</label>
                  </div>
                  <br />
                  <div className="form-floating">
                    <input
                      type="text"
                      className="form-control"
                      id="floatingPassword"
                      placeholder="Address"
                      style={{ width: "100%" }}
                    />
                    <label htmlFor="floatingPassword">Address</label>
                  </div>
                  <br />

                  <br />
                  <div className="form-floating">
                    <input
                      type="text"
                      className="form-control"
                      id="floatingPassword"
                      placeholder="Blood group"
                      style={{ width: "100%" }}
                    />
                    <label htmlFor="floatingPassword">Blood group</label>
                  </div>
                  <br />
                 
                </Form>
              
            </div>

        </Modal.Body>
        <Modal.Footer>

          <Button className='btn btn-primary' onClick={handleClose} style={{ backgroundColor: 'green',border:'none' }}>
            Register
          </Button>
          <Button className='btn btn-primary' onClick={handleClose}>
            Close
          </Button>
        </Modal.Footer>
      </Modal>
    </>
  )
}

