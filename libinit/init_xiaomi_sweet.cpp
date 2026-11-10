/*
 * SPDX-FileCopyrightText: The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_dalvik_heap.h>
#include <libinit_variant.h>

#include "vendor_init.h"

static const variant_info_t sweet_info = {
    .hwc_value = "GLOBAL",
    .sku_value = "pro",

    .brand = "Redmi",
    .device = "sweet",
    .mod_device = "sweet_global",
    .name = "sweet_global",
    .marketname = "Redmi Note 10 Pro",
    .model = "M2101K6G",
};

static const variant_info_t sweetjp_info = {
    .hwc_value = "JAPAN",
    .sku_value = "",

    .brand = "Redmi",
    .device = "sweet",
    .mod_device = "sweet_global",
    .name = "sweet_global",
    .marketname = "Redmi Note 10 Pro",
    .model = "M2101K6R",
};

static const variant_info_t sweetin_info = {
    .hwc_value = "INDIA",
    .sku_value = "std",

    .brand = "Redmi",
    .device = "sweetin",
    .mod_device = "sweetin_in_global",
    .name = "sweetin",
    .marketname = "Redmi Note 10 Pro",
    .model = "M2101K6P",
};

static const variant_info_t sweetinpro_info = {
    .hwc_value = "INDIA",
    .sku_value = "pro",

    .brand = "Redmi",
    .device = "sweetin",
    .mod_device = "sweetin_in_global",
    .name = "sweetinpro",
    .marketname = "Redmi Note 10 Pro Max",
    .model = "M2101K6I",
};

static const std::vector<variant_info_t> variants = {
    sweet_info,
    sweetjp_info,
    sweetin_info,
    sweetinpro_info,
};

void vendor_load_properties() {
    set_dalvik_heap();
    search_variant(variants);
}
