.class public final synthetic Lcom/android/settings/inputmethod/-$$Lambda$VirtualKeyboardFragment$ELggZWw8_elTt-jdsk0ISyYwg-o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic f$0:Ljava/text/Collator;


# direct methods
.method public synthetic constructor <init>(Ljava/text/Collator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/inputmethod/-$$Lambda$VirtualKeyboardFragment$ELggZWw8_elTt-jdsk0ISyYwg-o;->f$0:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/-$$Lambda$VirtualKeyboardFragment$ELggZWw8_elTt-jdsk0ISyYwg-o;->f$0:Ljava/text/Collator;

    check-cast p1, Lcom/samsung/android/settings/widget/SecInputMethodPreference;

    check-cast p2, Lcom/samsung/android/settings/widget/SecInputMethodPreference;

    invoke-static {v0, p1, p2}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->lambda$updateInputMethodPreferenceViews$0(Ljava/text/Collator;Lcom/samsung/android/settings/widget/SecInputMethodPreference;Lcom/samsung/android/settings/widget/SecInputMethodPreference;)I

    move-result p1

    return p1
.end method
