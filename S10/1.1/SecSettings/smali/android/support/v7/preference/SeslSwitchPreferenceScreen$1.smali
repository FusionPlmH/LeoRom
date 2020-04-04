.class Landroid/support/v7/preference/SeslSwitchPreferenceScreen$1;
.super Ljava/lang/Object;
.source "SeslSwitchPreferenceScreen.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/SeslSwitchPreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/preference/SeslSwitchPreferenceScreen;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/SeslSwitchPreferenceScreen;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/SeslSwitchPreferenceScreen$1;->this$0:Landroid/support/v7/preference/SeslSwitchPreferenceScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Landroid/support/v7/preference/SeslSwitchPreferenceScreen$1;->this$0:Landroid/support/v7/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {v4}, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/preference/SeslSwitchPreferenceScreen$1;->this$0:Landroid/support/v7/preference/SeslSwitchPreferenceScreen;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;->callChangeListener(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/v7/preference/SeslSwitchPreferenceScreen$1;->this$0:Landroid/support/v7/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;->setChecked(Z)V

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Landroid/support/v7/preference/SeslSwitchPreferenceScreen$1;->this$0:Landroid/support/v7/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {v4}, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/preference/SeslSwitchPreferenceScreen$1;->this$0:Landroid/support/v7/preference/SeslSwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;->callChangeListener(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/preference/SeslSwitchPreferenceScreen$1;->this$0:Landroid/support/v7/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;->setChecked(Z)V

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    return v3

    :cond_3
    return v2

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
