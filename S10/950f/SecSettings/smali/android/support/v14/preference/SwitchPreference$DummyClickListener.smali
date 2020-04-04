.class Landroid/support/v14/preference/SwitchPreference$DummyClickListener;
.super Ljava/lang/Object;
.source "SwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v14/preference/SwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DummyClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method private constructor <init>(Landroid/support/v14/preference/SwitchPreference;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v14/preference/SwitchPreference$DummyClickListener;->this$0:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v14/preference/SwitchPreference;Landroid/support/v14/preference/SwitchPreference$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v14/preference/SwitchPreference$DummyClickListener;-><init>(Landroid/support/v14/preference/SwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v14/preference/SwitchPreference$DummyClickListener;->this$0:Landroid/support/v14/preference/SwitchPreference;

    invoke-static {v0}, Landroid/support/v14/preference/SwitchPreference;->access$200(Landroid/support/v14/preference/SwitchPreference;)V

    return-void
.end method
