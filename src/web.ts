import { WebPlugin } from '@capacitor/core';

import type { AuthSSOPlugin } from './definitions';

export class AuthSSOWeb extends WebPlugin implements AuthSSOPlugin {

  async echo(options: { value: string }): Promise<{ value: string }> {

    console.info('ECHO', options);

    return options;
  }

  async signIn(): Promise<{ status: boolean; data: string; }> {
    const status = false;
    const data = "Chức năng chỉ hoạt động trên ứng dụng ios hoặc android";
    return { status, data };
  }
}
