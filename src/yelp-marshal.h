
#ifndef __yelp_marshal_MARSHAL_H__
#define __yelp_marshal_MARSHAL_H__

#include	<glib-object.h>

G_BEGIN_DECLS

/* VOID:POINTER,BOOLEAN (./yelp-marshal.list:1) */
extern void yelp_marshal_VOID__POINTER_BOOLEAN (GClosure     *closure,
                                                GValue       *return_value,
                                                guint         n_param_values,
                                                const GValue *param_values,
                                                gpointer      invocation_hint,
                                                gpointer      marshal_data);

/* VOID:STRING (./yelp-marshal.list:2) */
#define yelp_marshal_VOID__STRING	g_cclosure_marshal_VOID__STRING

/* VOID:VOID (./yelp-marshal.list:3) */
#define yelp_marshal_VOID__VOID	g_cclosure_marshal_VOID__VOID

/* VOID:STRING,INT (./yelp-marshal.list:4) */
extern void yelp_marshal_VOID__STRING_INT (GClosure     *closure,
                                           GValue       *return_value,
                                           guint         n_param_values,
                                           const GValue *param_values,
                                           gpointer      invocation_hint,
                                           gpointer      marshal_data);

/* VOID:POINTER (./yelp-marshal.list:5) */
#define yelp_marshal_VOID__POINTER	g_cclosure_marshal_VOID__POINTER

/* BOOLEAN:POINTER,BOOLEAN (./yelp-marshal.list:6) */
extern void yelp_marshal_BOOLEAN__POINTER_BOOLEAN (GClosure     *closure,
                                                   GValue       *return_value,
                                                   guint         n_param_values,
                                                   const GValue *param_values,
                                                   gpointer      invocation_hint,
                                                   gpointer      marshal_data);

G_END_DECLS

#endif /* __yelp_marshal_MARSHAL_H__ */

