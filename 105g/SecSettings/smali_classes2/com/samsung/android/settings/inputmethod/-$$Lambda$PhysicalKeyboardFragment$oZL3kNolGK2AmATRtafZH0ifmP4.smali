.class public final synthetic Lcom/samsung/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$oZL3kNolGK2AmATRtafZH0ifmP4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

.field private final synthetic f$1:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$oZL3kNolGK2AmATRtafZH0ifmP4;->f$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$oZL3kNolGK2AmATRtafZH0ifmP4;->f$1:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$oZL3kNolGK2AmATRtafZH0ifmP4;->f$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$oZL3kNolGK2AmATRtafZH0ifmP4;->f$1:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->lambda$onLoadFinishedInternal$0(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method
