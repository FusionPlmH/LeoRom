.class Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;
.super Ljava/lang/Object;
.source "UnrestrictedDataAccess.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/UnrestrictedDataAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenericMotionListener"
.end annotation


# instance fields
.field public isEnabled:Z

.field private position:I

.field final synthetic this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;


# direct methods
.method private constructor <init>(Lcom/android/settings/datausage/UnrestrictedDataAccess;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->position:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->isEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/datausage/UnrestrictedDataAccess;Lcom/android/settings/datausage/UnrestrictedDataAccess$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;-><init>(Lcom/android/settings/datausage/UnrestrictedDataAccess;)V

    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit16 v0, v0, 0x2002

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->position:I

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-virtual {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->position:I

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->isEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->performClick()V

    :cond_0
    iput v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->position:I

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->position:I

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
