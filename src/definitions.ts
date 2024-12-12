export interface AuthSSOPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  signIn(): Promise<{ status: boolean, value: string }>;
}
