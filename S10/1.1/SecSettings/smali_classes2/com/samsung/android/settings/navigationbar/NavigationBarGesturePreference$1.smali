.class Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;
.super Ljava/lang/Object;
.source "NavigationBarGesturePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0348

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const v1, 0x7f0a034c

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a0647

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a0760

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->access$000(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->access$100(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarGestureHintExtra()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->access$200(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->access$300(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->access$402(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->access$000(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->access$100(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarGestureHintExtra()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->access$200(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->access$300(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->access$000(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->access$100(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarGestureHintExtra()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->access$200(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->access$300(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->access$000(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->access$100(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarGestureHintExtra()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->access$200(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->access$300(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_4
    :goto_0
    return-void
.end method
