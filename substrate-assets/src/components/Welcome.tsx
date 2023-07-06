import React from 'react';
import './Welcome.css';

export const Welcome = () => {
    return (
        <div className="welcome">
            <p>The content of this page is generated from the data in
                <a href="https://github.com/paritytech/substrate-assets/tree/master/assets">https://github.com/paritytech/substrate-assets</a></p>
            <p>Click on any asset to copy its URL to your clipboard.</p>
            <p>NOTE: Icons are shown with an additional border radius.</p>
        </div>
    )
}
