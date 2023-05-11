/**
 * Copyright (c) HashiCorp, Inc.
 * SPDX-License-Identifier: MPL-2.0
 */

import Fragment from 'ember-data-model-fragments/fragment';
import { fragment } from 'ember-data-model-fragments/attributes';

export default class SidecarService extends Fragment {
  @fragment('sidecar-proxy') proxy;
}
