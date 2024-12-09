export interface AuthSSOPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
