import { useCallback, useEffect, useState } from 'react';
import Button from '../components/Button';
import ClickCount from '../components/ClickCount';
import styles from '../styles/home.module.css';

function throwError() {
  console.log(
    // The function body() is not defined
    document.body()
  );
}

export default function Home() {
  const [count, setCount] = useState(0);
  const [username, setUsername] = useState('');
  const [submittedUsername, setSubmittedUsername] = useState('');

  const increment = useCallback(() => {
    setCount((v) => v + 1);
  }, [setCount]);

  useEffect(() => {
    const r = setInterval(() => {
      increment();
    }, 1000);

    return () => {
      clearInterval(r);
    };
  }, [increment]);

  const handleSubmit = (event) => {
    event.preventDefault();
    setSubmittedUsername(username);
  };

  return (
    <main className={styles.main}>
      <h1>Fast Refresh Demo</h1>
      <p>
        Fast Refresh is a Next.js feature that gives you instantaneous feedback
        on edits made to your React components, without ever losing component
        state.
      </p>
      <hr className={styles.hr} />
      <div>
        <p>
          Auto incrementing value. The counter won't reset after edits or if
          there are errors.
        </p>
        <p>Current value: {count}</p>
      </div>
      <hr className={styles.hr} />
      <div>
        <p>Component with state.</p>
        <ClickCount />
      </div>
      <hr className={styles.hr} />
      <div>
        <p>
          The button below will throw 2 errors. You'll see the error overlay to
          let you know about the errors but it won't break the page or reset
          your state.
        </p>
        <Button
          onClick={(e) => {
            setTimeout(() => document.parentNode(), 0);
            throwError();
          }}
        >
          Throw an Error
        </Button>
      </div>
      <hr className={styles.hr} />
    </main>
  )
}

export default Home

import { useState } from 'react';

export default function Home() {
  const [username, setUsername] = useState('');
  const [submittedUsername, setSubmittedUsername] = useState('');

  const handleSubmit = (event) => {
    event.preventDefault();
    setSubmittedUsername(username);
  }; 

  return (
    <div>
      <h1>Roblox Username Application</h1>
      <form onSubmit={handleSubmit}>
        <input
          type="text"
          value={username}
          onChange={(e) => setUsername(e.target.value)}
          placeholder="Enter Roblox Username"
        />
        <button type="submit">Submit</button>
      </form>
      {submittedUsername && <p>Submitted Username: {submittedUsername}</p>}
    </div>
  );}