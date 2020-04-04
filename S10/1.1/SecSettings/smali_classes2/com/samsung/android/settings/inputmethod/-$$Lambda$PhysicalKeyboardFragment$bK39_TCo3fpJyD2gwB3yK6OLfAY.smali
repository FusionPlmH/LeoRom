.class public final synthetic Lcom/samsung/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$bK39_TCo3fpJyD2gwB3yK6OLfAY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

.field private final synthetic f$1:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;

.field private final synthetic f$2:Landroid/view/inputmethod/InputMethodInfo;

.field private final synthetic f$3:Landroid/view/inputmethod/InputMethodSubtype;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$bK39_TCo3fpJyD2gwB3yK6OLfAY;->f$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$bK39_TCo3fpJyD2gwB3yK6OLfAY;->f$1:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;

    iput-object p3, p0, Lcom/samsung/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$bK39_TCo3fpJyD2gwB3yK6OLfAY;->f$2:Landroid/view/inputmethod/InputMethodInfo;

    iput-object p4, p0, Lcom/samsung/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$bK39_TCo3fpJyD2gwB3yK6OLfAY;->f$3:Landroid/view/inputmethod/InputMethodSubtype;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$bK39_TCo3fpJyD2gwB3yK6OLfAY;->f$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$bK39_TCo3fpJyD2gwB3yK6OLfAY;->f$1:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$bK39_TCo3fpJyD2gwB3yK6OLfAY;->f$2:Landroid/view/inputmethod/InputMethodInfo;

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$bK39_TCo3fpJyD2gwB3yK6OLfAY;->f$3:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->lambda$onLoadFinishedInternal$1(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method
