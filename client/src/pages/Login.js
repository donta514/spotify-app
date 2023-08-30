import styled from "styled-components/macro";

const StyledLoginContainer = styled.main`
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: 100vh;
`;

const StyledLoginButton = styled.a`
  display: inline-block;
  background-color: var(--green);
  color: var(--white);
  border-radius: var(--border-radius-pill);
  font-weight: 700;
  font-size: var(--fz-lg);
  padding: var(--spacing-sm) var(--spacing-xl);
  margin: 1rem 0;

  &:hover,
  &:focus {
    text-decoration: none;
    filter: brightness(1.1);
  }
`;

// const StyledAppleButton = styled.a`
//   display: inline-block;
//   background-color: #fc3c44;
//   color: var(--white);
//   border-radius: var(--border-radius-pill);
//   font-weight: 700;
//   font-size: var(--fz-lg);
//   padding: var(--spacing-sm) var(--spacing-xl);
//   margin: 1rem 0;

//   &:hover,
//   &:focus {
//     text-decoration: none;
//     filter: brightness(1.1);
//   }
// `;

const Login = () => (
  <StyledLoginContainer>
    <StyledLoginButton href="http://localhost:8888/login">
      Log in to Spotify
    </StyledLoginButton>
    {/* <StyledAppleButton href="http://localhost:8888/login">
      Log in to Apple Music
    </StyledAppleButton> */}
  </StyledLoginContainer>
);

export default Login;
