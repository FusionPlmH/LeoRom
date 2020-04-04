.class Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;
.super Lcom/samsung/android/ims/ISemImsRegistrationListener$Stub;
.source "SemImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/SemImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsRegistrationListenerDelegate"
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/ims/SemImsRegistrationListener;

.field final synthetic this$0:Lcom/samsung/android/ims/SemImsManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/ims/SemImsManager;Lcom/samsung/android/ims/SemImsRegistrationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;->this$0:Lcom/samsung/android/ims/SemImsManager;

    invoke-direct {p0}, Lcom/samsung/android/ims/ISemImsRegistrationListener$Stub;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;->mListener:Lcom/samsung/android/ims/SemImsRegistrationListener;

    iput-object p2, p0, Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;->mListener:Lcom/samsung/android/ims/SemImsRegistrationListener;

    return-void
.end method


# virtual methods
.method public getListener()Lcom/samsung/android/ims/SemImsRegistrationListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;->mListener:Lcom/samsung/android/ims/SemImsRegistrationListener;

    return-object v0
.end method

.method public onDeregistered(Lcom/samsung/android/ims/SemImsRegistration;Lcom/samsung/android/ims/SemImsRegistrationError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;->mListener:Lcom/samsung/android/ims/SemImsRegistrationListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/ims/SemImsRegistrationListener;->onDeregistered(Lcom/samsung/android/ims/SemImsRegistration;Lcom/samsung/android/ims/SemImsRegistrationError;)V

    return-void
.end method

.method public onRegistered(Lcom/samsung/android/ims/SemImsRegistration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;->mListener:Lcom/samsung/android/ims/SemImsRegistrationListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/ims/SemImsRegistrationListener;->onRegistered(Lcom/samsung/android/ims/SemImsRegistration;)V

    return-void
.end method
