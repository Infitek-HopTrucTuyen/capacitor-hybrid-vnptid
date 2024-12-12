import { WebPlugin } from '@capacitor/core';

import type { AuthSSOPlugin } from './definitions';

export class AuthSSOWeb extends WebPlugin implements AuthSSOPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {

    console.info('ECHO', options);

    return options;
  }
}
