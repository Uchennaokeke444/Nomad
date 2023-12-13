// Copyright (c) HashiCorp, Inc.
// SPDX-License-Identifier: MPL-2.0

//go:build !linux

package executor

// resourceContainerContext is a platform-specific struct for managing a
// resource container.
type resourceContainerContext struct {
}

func (rc *resourceContainerContext) executorCleanup() error {
	return nil
}
