import {DonateEmail} from "./DonateEmail"
// this component renders the donation page.

const Donate = () => {


    return (
        <div className="donate-container">
            <img src="" alt=""></img>
            <h1>Two Ways to Give:</h1>
            <div className="donation-flex-container">
                <div className="monetary-donation">
                    <h2>Monetary Donation</h2>
                    <p>
                        Monetary donations support our community programs and projects as well as enable us to purchase other
                        immediate necessities for children and their families. <br /> <br />
                        Donations to Starting Point are tax deductible. Our nonprofit EIN number is 82-2055439. <br />
                        <b>Click here to be linked to Paypal:</b>
                    </p>
                    <button id="donate-link-bttn" onClick={event => window.location.href='https://startingpointworld.kindful.com/'}>Donate Here</button>
                </div>

                <div className="item-donation">
                    <h2>Item Donation</h2>
                    <p>
                        Show some love to young newcomers through a donation.  We are in need of: <br />
                    </p>
                    <ul style={{textAlign: 'left'}}>
                        <li>Socks (new only)</li>
                        <li>Children's shoes (new only)</li>
                        <li>Walmart gift cards for clothing</li>
                    </ul>
                </div>
            </div>
            <section id="donation-form-container">
                <h3>
                    Please complete the following form if you are interested in donating, we will contact you as soon as possible!
                </h3>
                    <DonateEmail/>
                <h2 id="thanks-footer">Thank you for supporting Starting Point and the newcomer community!</h2>
            </section>
        </div>
    )
}

export default Donate