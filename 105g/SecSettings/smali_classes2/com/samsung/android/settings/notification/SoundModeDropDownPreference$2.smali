.class Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$2;
.super Ljava/lang/Object;
.source "SoundModeDropDownPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$2;->this$0:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$2;->this$0:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$2;->this$0:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$2;->this$0:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$2;->this$0:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$2;->this$0:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference$2;->this$0:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
