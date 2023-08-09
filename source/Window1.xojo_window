#tag DesktopWindow
Begin DesktopWindow Window1
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   400
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   1198551039
   MenuBarVisible  =   False
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "Untitled"
   Type            =   0
   Visible         =   True
   Width           =   600
   Begin DesktopOpenGLSurface OpenGLSurface1
      AllowAutoDeactivate=   True
      ColorBits       =   103079215128
      Composited      =   True
      DepthBits       =   4294967320
      Enabled         =   True
      Height          =   360
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Visible         =   True
      Width           =   560
   End
End
#tag EndDesktopWindow

#tag WindowCode
#tag EndWindowCode

#tag Events OpenGLSurface1
	#tag Event
		Sub Opening()
		  OpenGL46.Initialize()
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Resized()
		  Window1.MouseCursor = System.Cursors.StandardPointer
		  
		End Sub
	#tag EndEvent
#tag EndEvents
