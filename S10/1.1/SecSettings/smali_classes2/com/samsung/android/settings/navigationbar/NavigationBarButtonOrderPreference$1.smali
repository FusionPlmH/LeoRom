.class Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;
.super Ljava/lang/Object;
.source "NavigationBarButtonOrderPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0571

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a0681

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->access$000(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->access$100(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->access$000(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->access$100(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    nop

    :goto_0
    return-void
.end method
