/* -*- Mode: C; tab-width: 8; indent-tabs-mode: t; c-basic-offset: 8 -*- */
/*
 * Copyright (C) 2004 Marco Pesenti Gritti
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public
 * License along with this program; if not, write to the
 * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
 * Boston, MA 02111-1307, USA.
 *
 * Author: Marco Pesenti Gritti <marco@gnome.org>
 */

#ifndef __YELP_GECKO_UTILS_H__
#define __YELP_GECKO_UTILS_H__

#include "yelp-settings.h"

G_BEGIN_DECLS

void            yelp_gecko_set_caret   (gboolean       value);
void            yelp_gecko_set_color   (YelpColorType  type,
					const gchar   *color);
void            yelp_gecko_set_font    (YelpFontType   font_type,
				        const gchar   *fontname);
gboolean       yelp_gecko_init         (void);
void           yelp_gecko_shutdown     (void);

G_END_DECLS

#endif /* __YELP_GECKO_UTILS_H__ */

