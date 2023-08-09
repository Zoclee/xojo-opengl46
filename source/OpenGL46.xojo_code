#tag Module
Protected Module OpenGL46
	#tag Method, Flags = &h21
		Private Function GetProcAddress(functionName As String) As Ptr
		  Soft Declare Function wglGetProcAddress Lib "opengl32" ( functionName as CString ) as Ptr 
		  Soft Declare Function GetProcAddress Lib "kernel32" ( functionName as CString ) as Ptr 
		  
		  Return wglGetProcAddress(functionName)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glActivateTexture(texture As UInt32)
		  fpActiveTexture.Invoke(texture)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glAttachShader(program As UInt32, shader As UInt32)
		  fpAttachShader.Invoke(program, shader)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glBindBuffer(target As UInt32, buffer As UInt32)
		  fpBindBuffer.Invoke(target, buffer)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glBindTexture(target As UInt32, texture As UInt32)
		  fpBindTexture.Invoke(target, texture)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glBindVertexArray(vertexArray As UInt32)
		  fpBindVertexArray.Invoke(vertexArray)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif 
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glBufferData(target As UInt32, size As UInt32, data As Ptr, usage As UInt32)
		  fpBufferData.Invoke(target, size, data, usage)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glClear(mask As UInt32)
		  fpClear.Invoke(mask)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glClearColor(red As Single, green As Single, blue As Single, alpha As Single)
		  fpClearColor.Invoke(red, green, blue, alpha)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glCompileShader(shader As UInt32)
		  fpCompileShader.Invoke(shader)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function glCreateProgram() As UInt32
		  return fpCreateProgram.Invoke()
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function glCreateShader(shaderType As UInt32) As UInt32
		  return fpCreateShader.Invoke(shaderType)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glCullFace(mode As UInt32)
		  fpCullFace.Invoke(mode)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glDeleteBuffers(size As Int32, buffers As Ptr)
		  fpDeleteBuffers.Invoke(size, buffers)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glDeleteProgram(program As UInt32)
		  fpDeleteProgram.Invoke(program)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glDeleteShader(shader As UInt32)
		  fpDeleteShader.Invoke(shader)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glDeleteTextures(size As Int32, textures As Ptr)
		  fpDeleteTextures.Invoke(size, textures)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glDeleteVertexArrays(size As Int32, arrays As Ptr)
		  fpDeleteVertexArrays.Invoke(size, arrays)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glDepthFunc(func As UInt32)
		  fpDepthFunc.Invoke(func)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glDepthMask(flag As UInt8)
		  fpDepthMask.Invoke(flag)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glDetachShader(program As UInt32, shader As UInt32)
		  fpDetachShader.Invoke(program, shader)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glDisable(cap As UInt32)
		  fpDisable.Invoke(cap)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glDrawArrays(mode As UInt32, first As UInt32, count As UInt32)
		  fpDrawArrays.Invoke(mode, first, count)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glDrawElements(mode As UInt32, count As UInt32, type As UInt32, indices As UInt32)
		  fpDrawElements.Invoke(mode, count, type, nil)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glEnable(cap As UInt32)
		  fpEnable.Invoke(cap)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glEnableVertexAttribArray(index As UInt32)
		  fpEnableVertexAttribArray.Invoke(index)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glFlush()
		  fpFlush.Invoke()
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glFrontFace(mode As UInt32)
		  fpFrontFace.Invoke(mode)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glGenBuffers(n As UInt32, buffers() As UInt32)
		  Var mb As new MemoryBlock(n * 4)
		  Var pos As UInt64
		  
		  fpGenBuffers.Invoke(n, mb)
		  pos = 0
		  while pos < mb.Size
		    buffers.Add(mb.UInt32Value(pos))
		    pos = pos + 4
		  wend
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glGenerateMipmap(target As UInt32)
		  fpGenerateMipmap.Invoke(target)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glGenTextures(n As UInt32, textures() As UInt32)
		  Var mb As new MemoryBlock(n * 4)
		  Var pos As UInt64
		  
		  fpGenTextures.Invoke(n, mb)
		  pos = 0
		  while pos < mb.Size
		    textures.Add(mb.UInt32Value(pos))
		    pos = pos + 4
		  wend
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glGenVertexArrays(n As UInt32, vertexArrays() As UInt32)
		  Var mb As new MemoryBlock(n * 4)
		  Var pos As UInt64
		  
		  fpGenVertexArrays.Invoke(n, mb)
		  pos = 0
		  while pos < mb.Size
		    vertexArrays.Add(mb.UInt32Value(pos))
		    pos = pos + 4
		  wend
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function glGetAttribLocation(program As UInt32, name As String) As Int32
		  Var location As Int32
		  Var mbStr As new MemoryBlock(name.Length + 1)
		  mbStr.CString(0) = name
		  
		  location = fpGetAttribLocation.Invoke(program, mbStr)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		  return location
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function glGetError() As UInt32
		  return fpGetError.Invoke()
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function glGetIntegerv(pname As UInt32) As Int32
		  Var mb As new MemoryBlock(4)
		  
		  fpGetIntegerv.Invoke(pname, mb)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		  return mb.Int32Value(0)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function glGetProgramInfoLog(program As UInt32, maxLength As UInt32) As String
		  Var mb As new MemoryBlock(maxLength)
		  Var length As new MemoryBlock(4)
		  Var message As String
		  
		  fpGetProgramInfoLog.Invoke(program, maxLength, length, mb)
		  message = mb.MidB(0, length.UInt32Value(0))
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		  return message
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function glGetProgramiv(program As UInt32, pname As UInt32) As Int32
		  Var mb As new MemoryBlock(4)
		  
		  fpGetProgramiv.Invoke(program, pname, mb)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		  return mb.Int32Value(0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function glGetShaderInfoLog(shader As UInt32, maxLength As UInt32) As String
		  Var mb As new MemoryBlock(maxLength)
		  Var length As new MemoryBlock(4)
		  Var message As String
		  
		  fpGetShaderInfoLog.Invoke(shader, maxLength, length, mb)
		  message = mb.MidB(0, length.UInt32Value(0))
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		  return message
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function glGetShaderiv(shader As UInt32, pname As UInt32) As Int32
		  Var mb As new MemoryBlock(4)
		  
		  fpGetShaderiv.Invoke(shader, pname, mb)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		  return mb.Int32Value(0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function glGetUniformLocation(program As UInt32, name As String) As Int32
		  Var location As Int32
		  Var mbStr As new MemoryBlock(name.Length + 1)
		  mbStr.CString(0) = name
		  
		  location = fpGetUniformLocation.Invoke(program, mbStr)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		  return location
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glLinkProgram(program As UInt32)
		  fpLinkProgram.Invoke(program)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glShaderSource(shader As UInt32, source As String)
		  Var mb As new MemoryBlock(4)
		  Var mbStr As New MemoryBlock(source.Length + 1)
		  
		  mbStr.CString(0) = source
		  mb.Ptr(0) = mbStr
		  fpShaderSource.Invoke(shader, 1, mb, nil)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glTexImage2D(target As UInt32, level As Int32, internalFormat As Int32, width As Int32, height As Int32, border As Int32, format As UInt32, type As UInt32, data As Ptr)
		  fpTexImage2D.Invoke(target, level, internalFormat, width, height, border, format, type, data)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glTexParameteri(target As UInt32, pname As UInt32, param As Int32)
		  fpTexParameteri.Invoke(target, pname, param)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glUniform1f(location As Int32, v0 As Single)
		  fpUniform1f.Invoke(location, v0)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glUniform1i(location As Int32, v0 As Int32)
		  fpUniform1i.Invoke(location, v0)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glUniform3f(location As Int32, v0 As Single, v1 As Single, v2 As Single)
		  fpUniform3f.Invoke(location, v0, v1, v2)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glUniform3fv(location As Int32, count As Int32, value As Ptr)
		  fpUniform3fv.Invoke(location, count, value)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glUniform4f(location As Int32, v0 As Single, v1 As Single, v2 As Single, v3 As Single)
		  fpUniform4f.Invoke(location, v0, v1, v2, v3)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glUniformMatrix3fv(location As Int32, count As UInt32, transpose As Boolean, value As Ptr)
		  fpUniformMatrix3fv.Invoke(location, count, transpose, value)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glUniformMatrix4fv(location As Int32, count As UInt32, transpose As Boolean, value As Ptr)
		  fpUniformMatrix4fv.Invoke(location, count, transpose, value)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glUseProgram(program As UInt32)
		  fpUseProgram.Invoke(program)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glVertexAttribPointer(index As UInt32, size As Int32, type As UInt32, normalized As Boolean, stride As UInt32, pointer As UInt32)
		  fpVertexAttribPointer.Invoke(index, size, type, normalized, stride, pointer)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub glViewport(x As Int32, y As Int32, width As Int32, height As Int32)
		  fpViewport.Invoke(x, y, width, height)
		  
		  #If DebugBuild Then
		    Var error As Int32 = glGetError()
		    if error <> 0 then
		      break
		    end if
		  #Endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Initialize()
		  Soft Declare Function GetProcAddress Lib "kernel32" ( moduleHandle As Integer, functionName as CString ) as Ptr 
		  Soft Declare Function LoadLibraryA Lib "kernel32" ( moduleName as CString ) as Integer 
		  Soft Declare Function wglGetProcAddress Lib "opengl32" ( functionName as CString ) as Ptr 
		  
		  Var p As Ptr
		  Var oglModule As Integer
		  
		  oglModule = LoadLibraryA("opengl32.dll")
		  
		  p = wglGetProcAddress("glActiveTexture")
		  fpActiveTexture = New sigActiveTexture(p)
		  
		  p = wglGetProcAddress("glAttachShader")
		  fpAttachShader = New sigAttachShader(p)
		  
		  p = wglGetProcAddress("glBindBuffer")
		  fpBindBuffer = New sigBindBuffer(p)
		  
		  p = GetProcAddress(oglModule, "glBindTexture") // OpenGL 1.1
		  fpBindTexture = New sigBindTexture(p)
		  
		  p = wglGetProcAddress("glBindVertexArray")
		  fpBindVertexArray = New sigBindVertexArray(p)
		  
		  p = wglGetProcAddress("glBufferData")
		  fpBufferData = New sigBufferData(p)
		  
		  p = GetProcAddress(oglModule, "glClear") // OpenGL 1.1
		  fpClear = New sigClear(p)
		  
		  p = GetProcAddress(oglModule, "glClearColor") // OpenGL 1.1
		  fpClearColor = New sigClearColor(p)
		  
		  p = wglGetProcAddress("glCompileShader")
		  fpCompileShader = New sigCompileShader(p)
		  
		  p = wglGetProcAddress("glCreateProgram")
		  fpCreateProgram = New sigCreateProgram(p)
		  
		  p = wglGetProcAddress("glCreateShader")
		  fpCreateShader = New sigCreateShader(p)
		  
		  p = GetProcAddress(oglModule, "glCullFace") // OpenGL 1.1
		  fpCullFace = New sigCullFace(p)
		  
		  p = wglGetProcAddress("glDeleteBuffers")
		  fpDeleteBuffers = New sigDeleteBuffers(p)
		  
		  p = wglGetProcAddress("glDeleteProgram")
		  fpDeleteProgram = New sigDeleteProgram(p)
		  
		  p = wglGetProcAddress("glDeleteShader")
		  fpDeleteShader = New sigDeleteShader(p)
		  
		  p = GetProcAddress(oglModule, "glDeleteTextures") // OpenGL 1.1
		  fpDeleteTextures = New sigDeleteTextures(p)
		  
		  p = wglGetProcAddress("glDeleteVertexArrays")
		  fpDeleteVertexArrays = New sigDeleteVertexArrays(p)
		  
		  p = GetProcAddress(oglModule, "glDepthFunc") // OpenGL 1.1
		  fpDepthFunc = New sigDepthFunc(p)
		  
		  p = GetProcAddress(oglModule, "glDepthMask") // OpenGL 1.1
		  fpDepthMask = New sigDepthMask(p)
		  
		  p = wglGetProcAddress("glDetachShader") 
		  fpDetachShader = New sigDetachShader(p)
		  
		  p = GetProcAddress(oglModule, "glDisable") // OpenGL 1.1
		  fpDisable = New sigDisable(p)
		  
		  p = GetProcAddress(oglModule, "glDrawArrays") // OpenGL 1.1
		  fpDrawArrays = New sigDrawArrays(p)
		  
		  p = GetProcAddress(oglModule, "glDrawElements") // OpenGL 1.1
		  fpDrawElements = New sigDrawElements(p)
		  
		  p = GetProcAddress(oglModule, "glEnable") // OpenGL 1.1
		  fpEnable = New sigEnable(p)
		  
		  p = wglGetProcAddress("glEnableVertexAttribArray")
		  fpEnableVertexAttribArray = New sigEnableVertexAttribArray(p)
		  
		  p = GetProcAddress(oglModule, "glFlush") // OpenGL 1.1
		  fpFlush = New sigFlush(p)
		  
		  p = GetProcAddress(oglModule, "glFrontFace") // OpenGL 1.1
		  fpFrontFace = New sigFrontFace(p)
		  
		  p = wglGetProcAddress("glGenBuffers")
		  fpGenBuffers = New sigGenBuffers(p)
		  
		  p = wglGetProcAddress("glGenerateMipmap")
		  fpGenerateMipmap = New sigGenerateMipmap(p)
		  
		  p = GetProcAddress(oglModule, "glGenTextures") // OpenGL 1.1
		  fpGenTextures = New sigGenTextures(p)
		  
		  p = wglGetProcAddress("glGenVertexArrays")
		  fpGenVertexArrays = New sigGenVertexArrays(p)
		  
		  p = wglGetProcAddress("glGetAttribLocation")
		  fpGetAttribLocation = New sigGetAttribLocation(p)
		  
		  p = GetProcAddress(oglModule, "glGetError") // OpenGL 1.1
		  fpGetError = New sigGetError(p)
		  
		  p = GetProcAddress(oglModule, "glGetIntegerv") // OpenGL 1.1
		  fpGetIntegerv = New sigGetIntegerv(p)
		  
		  p = wglGetProcAddress("glGetProgramInfoLog")
		  fpGetProgramInfoLog = New sigGetProgramInfoLog(p)
		  
		  p = wglGetProcAddress("glGetProgramiv")
		  fpGetProgramiv = New sigGetProgramiv(p)
		  
		  p = wglGetProcAddress("glGetUniformLocation")
		  fpGetUniformLocation = New sigGetUniformLocation(p)
		  
		  p = wglGetProcAddress("glGetShaderInfoLog")
		  fpGetShaderInfoLog = New sigGetShaderInfoLog(p)
		  
		  p = wglGetProcAddress("glGetShaderiv")
		  fpGetShaderiv = New sigGetShaderiv(p)
		  
		  p = wglGetProcAddress("glLinkProgram")
		  fpLinkProgram = New sigLinkProgram(p)
		  
		  p = wglGetProcAddress("glShaderSource")
		  fpShaderSource = New sigShaderSource(p)
		  
		  p = GetProcAddress(oglModule, "glTexImage2D") // OpenGL 1.1
		  fpTexImage2D = New sigTexImage2D(p)
		  
		  p = GetProcAddress(oglModule, "glTexParameteri") // OpenGL 1.1
		  fpTexParameteri = New sigTexParameteri(p)
		  
		  p = wglGetProcAddress("glUniformMatrix3fv")
		  fpUniformMatrix3fv = New sigUniformMatrix3fv(p)
		  
		  p = wglGetProcAddress("glUniformMatrix4fv")
		  fpUniformMatrix4fv = New sigUniformMatrix4fv(p)
		  
		  p = wglGetProcAddress("glUniform1f")
		  fpUniform1f = New sigUniform1f(p)
		  
		  p = wglGetProcAddress("glUniform1i")
		  fpUniform1i = New sigUniform1i(p)
		  
		  p = wglGetProcAddress("glUniform3f")
		  fpUniform3f = New sigUniform3f(p)
		  
		  p = wglGetProcAddress("glUniform3fv")
		  fpUniform3fv = New sigUniform3fv(p)
		  
		  p = wglGetProcAddress("glUniform4f")
		  fpUniform4f = New sigUniform4f(p)
		  
		  p = wglGetProcAddress("glUseProgram")
		  fpUseProgram = New sigUseProgram(p)
		  
		  p = wglGetProcAddress("glVertexAttribPointer")
		  fpVertexAttribPointer = New sigVertexAttribPointer(p)
		  
		  p = GetProcAddress(oglModule, "glViewport") // OpenGL 1.1
		  fpViewport= New sigViewport(p)
		  
		  
		End Sub
	#tag EndMethod

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigActiveTexture(texture As UInt32)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigAttachShader(program As UInt32, shader As UInt32)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigBindBuffer(target As UInt32, buffer As UInt32)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigBindTexture(target As UInt32, texture As UInt32)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigBindVertexArray(vertexArray As UInt32)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigBufferData(target As UInt32, size As UInt32, data As Ptr, usage As UInt32)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigClear(mask As UInt32)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigClearColor(red As Single, green As Single, blue As Single, alpha As Single)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigCompileShader(shader As UInt32)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Function sigCreateProgram() As UInt32
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Function sigCreateShader(shaderType As UInt32) As UInt32
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigCullFace(mode As UInt32)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigDeleteBuffers(size As Int32, buffers As Ptr)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigDeleteProgram(program As UInt32)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigDeleteShader(shader As UInt32)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigDeleteTextures(size As Int32, textures As Ptr)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigDeleteVertexArrays(size As Int32, arrays As Ptr)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigDepthFunc(func As UInt32)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigDepthMask(flag As UInt8)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigDetachShader(program As UInt32, shader As UInt32)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigDisable(cap As UInt32)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigDrawArrays(mode As UInt32, first As UInt32, count As UInt32)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigDrawElements(mode As UInt32, count As UInt32, type As UInt32, indices As Ptr)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigEnable(cap As UInt32)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigEnableVertexAttribArray(index As UInt32)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigFlush()
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigFrontFace(mode As UInt32)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigGenBuffers(n As UInt32, buffers As Ptr)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigGenerateMipmap(target As UInt32)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigGenTextures(n As UInt32, textures As Ptr)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigGenVertexArrays(n As UInt32, vertexArrays As Ptr)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Function sigGetAttribLocation(program As UInt32, name As CString) As Int32
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Function sigGetError() As UInt32
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigGetIntegerv(pname As UInt32, data As Ptr)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigGetProgramInfoLog(shader As UInt32, maxLength As UInt32, length As Ptr, infoLog As Ptr)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigGetProgramiv(program As UInt32, pname As UInt32, params As Ptr)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigGetShaderInfoLog(shader As UInt32, maxLength As UInt32, length As Ptr, infoLog As Ptr)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigGetShaderiv(shader As UInt32, pname As UInt32, params As Ptr)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Function sigGetUniformLocation(program As UInt32, name As CString) As Int32
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigLinkProgram(program As UInt32)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigShaderSource(shader As UInt32, count As Int32, source As Ptr, length As Ptr)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigTexImage2D(target As UInt32, level As Int32, internalFormat As Int32, width As Int32, height As Int32, border As Int32, format As UInt32, type As UInt32, data As Ptr)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigTexParameteri(target As UInt32, pname As UInt32, param As Int32)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigUniform1f(location As Int32, v0 As Single)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigUniform1i(location As Int32, v0 As Int32)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigUniform3f(location As Int32, v0 As Single, v1 As Single, v2 As Single)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigUniform3fv(location As Int32, count As Int32, value As Ptr)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigUniform4f(location As Int32, v0 As Single, v1 As Single, v2 As Single, v3 As Single)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigUniformMatrix3fv(location As Int32, count As UInt32, transpose As Boolean, value As Ptr)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigUniformMatrix4fv(location As Int32, count As UInt32, transpose As Boolean, value As Ptr)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigUseProgram(program As UInt32)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigVertexAttribPointer(index As UInt32, size As Int32, type As UInt32, normalized As Boolean, stride As UInt32, pointer As UInt32)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub sigViewport(x As Int32, y As Int32, width As Int32, height As Int32)
	#tag EndDelegateDeclaration


	#tag Property, Flags = &h21
		Private fpActiveTexture As sigActiveTexture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpAttachShader As sigAttachShader
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpBindBuffer As sigBindBuffer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpBindTexture As sigBindTexture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpBindVertexArray As sigBindVertexArray
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpBufferData As sigBufferData
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpClear As sigClear
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpClearColor As sigClearColor
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpCompileShader As sigCompileShader
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpCreateProgram As sigCreateProgram
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpCreateShader As sigCreateShader
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpCullFace As sigCullFace
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpDeleteBuffers As sigDeleteBuffers
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpDeleteProgram As sigDeleteProgram
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpDeleteShader As sigDeleteShader
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpDeleteTextures As sigDeleteTextures
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpDeleteVertexArrays As sigDeleteVertexArrays
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpDepthFunc As sigDepthFunc
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpDepthMask As sigDepthMask
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpDetachShader As sigDetachShader
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpDisable As sigDisable
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpDrawArrays As sigDrawArrays
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpDrawElements As sigDrawElements
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpEnable As sigEnable
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpEnableVertexAttribArray As sigEnableVertexAttribArray
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpFlush As sigFlush
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpFrontFace As sigFrontFace
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpGenBuffers As sigGenBuffers
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpGenerateMipmap As sigGenerateMipmap
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpGenTextures As sigGenTextures
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpGenVertexArrays As sigGenVertexArrays
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpGetAttribLocation As sigGetAttribLocation
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpGetError As sigGetError
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpGetIntegerv As sigGetIntegerv
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpGetProgramInfoLog As sigGetProgramInfoLog
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpGetProgramiv As sigGetProgramiv
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpGetShaderInfoLog As sigGetShaderInfoLog
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpGetShaderiv As sigGetShaderiv
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpGetUniformLocation As sigGetUniformLocation
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpLinkProgram As sigLinkProgram
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpShaderSource As sigShaderSource
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpTexImage2D As sigTexImage2D
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpTexParameteri As sigTexParameteri
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpUniform1f As sigUniform1f
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpUniform1i As sigUniform1i
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpUniform3f As sigUniform3f
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpUniform3fv As sigUniform3fv
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpUniform4f As sigUniform4f
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpUniformMatrix3fv As sigUniformMatrix3fv
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpUniformMatrix4fv As sigUniformMatrix4fv
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpUseProgram As sigUseProgram
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpVertexAttribPointer As sigVertexAttribPointer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fpViewport As sigViewport
	#tag EndProperty


	#tag Constant, Name = GL_ACTIVE_ATTRIBUTES, Type = Double, Dynamic = False, Default = \"&h8b89", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_ACTIVE_ATTRIBUTE_MAX_LENGTH, Type = Double, Dynamic = False, Default = \"&h8b8a", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_ACTIVE_UNIFORMS, Type = Double, Dynamic = False, Default = \"&h8b86", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_ACTIVE_UNIFORM_MAX_LENGTH, Type = Double, Dynamic = False, Default = \"&h8b87", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_ARRAY_BUFFER, Type = Double, Dynamic = False, Default = \"&h8892", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_ATOMIC_COUNTER_BUFFER, Type = Double, Dynamic = False, Default = \"&h92c0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_ATTACHED_SHADERS, Type = Double, Dynamic = False, Default = \"&h8b85", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_BACK, Type = Double, Dynamic = False, Default = \"&h0405", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_BGRA, Type = Double, Dynamic = False, Default = \"&h80e1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_BYTE, Type = Double, Dynamic = False, Default = \"&h1400", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_CCW, Type = Double, Dynamic = False, Default = \"&h0901", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_COLOR_BUFFER_BIT, Type = Double, Dynamic = False, Default = \"&h4000", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_COMPILE_STATUS, Type = Double, Dynamic = False, Default = \"&h8b81", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_COMPUTE_SHADER, Type = Double, Dynamic = False, Default = \"&h91b9", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_COPY_READ_BUFFER, Type = Double, Dynamic = False, Default = \"&h8f36", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_COPY_WRITE_BUFFER, Type = Double, Dynamic = False, Default = \"&h8f37", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_CULL_FACE, Type = Double, Dynamic = False, Default = \"&h0b44", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_CW, Type = Double, Dynamic = False, Default = \"&h0900", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_DELETE_STATUS, Type = Double, Dynamic = False, Default = \"&h8b80", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_DEPTH_BUFFER_BIT, Type = Double, Dynamic = False, Default = \"&h100", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_DEPTH_TEST, Type = Double, Dynamic = False, Default = \"&h0b71", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_DISPATCH_INDIRECT_BUFFER, Type = Double, Dynamic = False, Default = \"&h90ee", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_DOUBLE, Type = Double, Dynamic = False, Default = \"&h140a", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_DRAW_INDIRECT_BUFFER, Type = Double, Dynamic = False, Default = \"&h8f3f", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_DYNAMIC_COPY, Type = Double, Dynamic = False, Default = \"&h88ea", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_DYNAMIC_DRAW, Type = Double, Dynamic = False, Default = \"&h88e8", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_DYNAMIC_READ, Type = Double, Dynamic = False, Default = \"&h88e9", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_ELEMENT_ARRAY_BUFFER, Type = Double, Dynamic = False, Default = \"&h8893", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_EQUAL, Type = Double, Dynamic = False, Default = \"&h0202", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_FALSE, Type = Double, Dynamic = False, Default = \"&h00", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_FIXED, Type = Double, Dynamic = False, Default = \"&h140c", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_FLOAT, Type = Double, Dynamic = False, Default = \"&h1406", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_FRAGMENT_SHADER, Type = Double, Dynamic = False, Default = \"&h8b30", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_GEOMETRY_SHADER, Type = Double, Dynamic = False, Default = \"&h8dd9", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_HALF_FLOAT, Type = Double, Dynamic = False, Default = \"&h140b", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_INFO_LOG_LENGTH, Type = Double, Dynamic = False, Default = \"&h8b84", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_INT, Type = Double, Dynamic = False, Default = \"&h1404", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_INT_2_10_10_10_REV, Type = Double, Dynamic = False, Default = \"&h8d9f", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_LEQUAL, Type = Double, Dynamic = False, Default = \"&h0203", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_LINEAR, Type = Double, Dynamic = False, Default = \"&h2601", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_LINES, Type = Double, Dynamic = False, Default = \"&h0001", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_LINES_ADJACENCY, Type = Double, Dynamic = False, Default = \"&h000a", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_LINE_LOOP, Type = Double, Dynamic = False, Default = \"&h0002", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_LINE_STRIP, Type = Double, Dynamic = False, Default = \"&h0003", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_LINE_STRIP_ADJACENCY, Type = Double, Dynamic = False, Default = \"&h000b", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_LINK_STATUS, Type = Double, Dynamic = False, Default = \"&h8b82", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_PATCHES, Type = Double, Dynamic = False, Default = \"&h000e", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_PIXEL_PACK_BUFFER, Type = Double, Dynamic = False, Default = \"&h88eb", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_PIXEL_UNPACK_BUFFER, Type = Double, Dynamic = False, Default = \"&h88ec", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_POINTS, Type = Double, Dynamic = False, Default = \"&h0000", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_QUERY_BUFFER, Type = Double, Dynamic = False, Default = \"&h9192", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_SHADER_SOURCE_LENGTH, Type = Double, Dynamic = False, Default = \"&h8b88", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_SHADER_STORAGE_BUFFER, Type = Double, Dynamic = False, Default = \"&h90d2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_SHADER_TYPE, Type = Double, Dynamic = False, Default = \"&h8b4f", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_SHORT, Type = Double, Dynamic = False, Default = \"&h1402", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_STATIC_COPY, Type = Double, Dynamic = False, Default = \"&h88e6", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_STATIC_DRAW, Type = Double, Dynamic = False, Default = \"&h88e4", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_STATIC_READ, Type = Double, Dynamic = False, Default = \"&h88e5", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_STENCIL_BUFFER_BIT, Type = Double, Dynamic = False, Default = \"&h400", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_STREAM_COPY, Type = Double, Dynamic = False, Default = \"&h88e2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_STREAM_DRAW, Type = Double, Dynamic = False, Default = \"&h88e0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_STREAM_READ, Type = Double, Dynamic = False, Default = \"&h88e1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_TESS_CONTROL_SHADER, Type = Double, Dynamic = False, Default = \"&h8e88", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_TESS_EVALUATION_SHADER, Type = Double, Dynamic = False, Default = \"&h8e87", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_TEXTURE0, Type = Double, Dynamic = False, Default = \"&h84c0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_TEXTURE1, Type = Double, Dynamic = False, Default = \"&h84c1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_TEXTURE10, Type = Double, Dynamic = False, Default = \"&h84ca", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_TEXTURE2, Type = Double, Dynamic = False, Default = \"&h84c2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_TEXTURE3, Type = Double, Dynamic = False, Default = \"&h84c3", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_TEXTURE4, Type = Double, Dynamic = False, Default = \"&h84c4", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_TEXTURE5, Type = Double, Dynamic = False, Default = \"&h84c5", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_TEXTURE6, Type = Double, Dynamic = False, Default = \"&h84c6", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_TEXTURE7, Type = Double, Dynamic = False, Default = \"&h84c7", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_TEXTURE8, Type = Double, Dynamic = False, Default = \"&h84c8", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_TEXTURE9, Type = Double, Dynamic = False, Default = \"&h84c9", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_TEXTURE_2D, Type = Double, Dynamic = False, Default = \"&h0de1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_TEXTURE_BUFFER, Type = Double, Dynamic = False, Default = \"&h8c2a", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_TEXTURE_MAG_FILTER, Type = Double, Dynamic = False, Default = \"&h2800", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_TEXTURE_MIN_FILTER, Type = Double, Dynamic = False, Default = \"&h2801", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_TRANSFORM_FEEDBACK_BUFFER, Type = Double, Dynamic = False, Default = \"&h8c8e", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_TRIANGLES, Type = Double, Dynamic = False, Default = \"&h0004", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_TRIANGLES_ADJACENCY, Type = Double, Dynamic = False, Default = \"&h000c", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_TRIANGLE_FAN, Type = Double, Dynamic = False, Default = \"&h0006", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_TRIANGLE_STRIP, Type = Double, Dynamic = False, Default = \"&h0005", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_TRIANGLE_STRIP_ADJACENCY, Type = Double, Dynamic = False, Default = \"&h000d", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_TRUE, Type = Double, Dynamic = False, Default = \"&h01", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_UNIFORM_BUFFER, Type = Double, Dynamic = False, Default = \"&h8a11", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_UNSIGNED_BYTE, Type = Double, Dynamic = False, Default = \"&h1401", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_UNSIGNED_INT, Type = Double, Dynamic = False, Default = \"&h1405", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_UNSIGNED_INT_10F_11F_11F_REV, Type = Double, Dynamic = False, Default = \"&h8c3b", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_UNSIGNED_INT_2_10_10_10_REV, Type = Double, Dynamic = False, Default = \"&h8368", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_UNSIGNED_SHORT, Type = Double, Dynamic = False, Default = \"&h1403", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_VALIDATE_STATUS, Type = Double, Dynamic = False, Default = \"&h8b83", Scope = Public
	#tag EndConstant

	#tag Constant, Name = GL_VERTEX_SHADER, Type = Double, Dynamic = False, Default = \"&h8b31", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
